
cv:
	typst compile cv.typ cv.pdf
	typst compile cv.typ cv.svg

view:cv
    open cv.pdf

watch:
    typst watch cv.typ