# Positron Workshop

This repo hosts materials for a half-day introduction to Positron particularly for R and RStudio users. 

## Events

This workshop will be delivered at several events in 2025:

* [RaukR](raukr.qmd) with Jenny Bryan, June 2025
* [Cascadia R Conf](caskdr.qmd) with Charlotte Wickham, June 2025
* USCOTS with Hadley Wickham and Mine Çetinkaya-Rundel, July 2025
* useR with Jenny Bryan and Julia Silge, August 2025

## Workflow

Preview the website locally with:

```bash
quarto preview
```

Modules need a landing page in `modules/` and a slide deck in `slides/`---these files should have the same slug. 
Use the `include` shortcode to include the slide deck on the landing page:

```markdown
{{< include _slides.md >}}
```

The rest of the landing page can be used for links, code, or other content you want easiy accessible to participants.