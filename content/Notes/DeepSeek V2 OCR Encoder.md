Human vision uses casual reasoning for processing visual "tokens" vs raster-scan order used in more VLM encoders.

Human vision is guided by semantic understanding. They should be selecteivly processed with ordering contingent on visual semantics.

What is the CLIP component?
How are they employing language model architectures for encode?
DETR -> BLIP2
- parallelized queries in decoder
- What is relationship between encoder and decoder, why do it go before the LLM?
- encoder projector LLM paradigm. what is that?
	- apparently the projector maps reordered tokens into the LLM's embedding space
- what is the difference between the SAM VITDET and the CONV? What does SAM stand for?
	- SAM stands for Segment Anything Model
	- Conv = Convolutional Compressor
	- VITDET = vision transformer detection
- Architecture
	- DeepEncoder
		- Vision tokenizer
			- In this came SAM + 2 conv layers
			- Tokenizes and then compresses 16x
		- Vision encoder using a language model
			- What is bidirectional attention?
			- Why go bidirectional? Why the vision toekn + casual query?
			- How exactly does the casual query work?
		- Decoder
			- Does Deepseek's MoE Decoder'

What exactly is Standard Intelligence and 

Went down a rabbit hole on vision encoders this week - specifically informed by DeepSeek-OCR's DeepEncoder and SI's FDM-1.

The main problem: standard VLM encoders tokenize images in raster-scan order and every patch costs the same (in token terms), whether it's an image of a paragraph of text or blank page. This is quite different from human vision which is guided by semantics and attention is focused on where information is. 

To put the cost into perspective: a 720p screenshot is ~1.2k tokens on Claude's tokenizer, and at 30 FPS that gets to 1m tokens for 1 minute of screen recording.

Some of DeepEncoder's architecture changes on single images involve ordering tricks:
- Running windows attention over patches of an image with SAM-ViTDet (80m). This is local attention, which is cheap, so you don't blow up activation memory.
- using a 2 layer conv to compress 16x (from 4k patches in a 1024x1024 page to just 256 tokens)
- only then run global attention and map them into the LLM's embedding space (using an industry standard encoder -> projector -> LLM wiring setup)

This accomplishes containing O(n^2) global attention only on the compressed sequence. You can take a page of 1000+ words of text and compress it down to just 256 vision tokens!!

This is fine for pure static images but computer use poses new problems and thus a new tradeoff space. What is that?

Video from screen recordings is ~95% redundant frame to frame, and information density can swing wildly. You can go from just moving a cursor across a blank screen to scrolling through a pdf. Fixed tokens-per-frame rate is an incorrect assumption to be operating from. 

The SI team doesn't publish their encoder but they shared some constraints. The encoder is trained with a masked-compression objective (V-JEPA adjacent). In this case you would mask spatiotemporal patches and predict what's hidden. Anything predictable from surround context is "free" so static regions cost ~nothing and you get variable-rate per token by construction.

They've gone the distance of averaging ~5.6 token per frame which comes out to 1M token for 1h40m of 30 FPS video.

