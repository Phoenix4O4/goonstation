
// dummy stuff so the linter doesn't compile on 514
#if DM_VERSION < 514

#define NORMAL_RAND 69

proc/generator(type, A, B, rand)
	var/generator/gen = new
	gen.lower = A
	gen.upper = B
	return gen

/generator
	parent_type = /datum
	var/lower
	var/upper

	proc/Rand()
		return rand() * (upper - lower) + lower
#endif
