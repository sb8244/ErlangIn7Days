c(translate_service).
c(doctor).
Doc = spawn(fun doctor:loop/0).
Doc ! new.
translate_service:translate(translator, "blanca").
translate_service:translate(translator, "casa").
translate_service:translate(translator, "die").
translate_service:translate(translator, "casa").