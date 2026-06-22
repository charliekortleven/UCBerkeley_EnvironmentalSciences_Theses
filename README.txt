I used ‘Extractify’ to automate the process of extracting information from PDFs (https://getextractify.com/mode/custom). Scripts often fail in extracting information due to the various inconsistencies in formatting. This FREE tool allows batch processing of up to 30 PDFs at a time, and requires instructions for extracting text. Listed below are the exact scripts I gave the AI for each set of years; I used Claude to optimize each of my instructions. 

Years 2010-2024:

Author: Header, left-hand side. If not in the header, look for a byline near the title. Return the full name only, no labels or punctuation.
Title: The largest or most prominent text on the page, below the header. Exclude author names, dates, and institutional affiliations. If multiple lines form the title, include all of them.
Year: Header, right-hand side — extract the 4-digit year only. No other text.
Abstract: Return only the text of the abstract section, starting after the word ABSTRACT and ending before KEYWORDS. Do not summarize — copy the text verbatim.
Keywords: The list of words or phrases beneath the KEYWORDS header. Return as a comma-separated list, no labels or extra punctuation.

Years 2005-2009:

Author: Header, left-hand side. If not in the header, look for a byline near the title. Return the full name only, no labels or punctuation.
Title: The largest or most prominent text on the page, below the header. Exclude author names, dates, and institutional affiliations. If multiple lines form the title, include all of them.
Year: Header, right-hand side — extract the 4-digit year only. No other text.
Abstract: Return only the text of the abstract section, starting after the word ABSTRACT — copy the text verbatim.

Years 1997-2004:

Author: Extract the name(s) appearing after the title and before the abstract or the word "Abstract". This may include multiple authors separated by commas or line breaks.
Title: Extract all text from the beginning of the document up to, but not including, the first person's name. The title may span multiple lines.
Abstract: Extract all text following the word "Abstract" (or "ABSTRACT"). If the word "Abstract" is not present, extract the largest continuous block of text appearing after the author name(s). Stop at the next section heading (e.g., "Introduction", "Keywords").
