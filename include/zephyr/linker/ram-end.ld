/*
 * Added after the very last allocation that might land in RAM to define the various
 * end-of-used-memory symbols
 */

    SECTION_PROLOGUE(.last_ram_section,,)
    {
#ifdef LAST_RAM_ALIGN
	LAST_RAM_ALIGN
#endif
	_image_ram_end = .;
	_end = .; /* end of image */
	z_mapped_end = .;
    } GROUP_NOLOAD_LINK_IN(RAMABLE_REGION, RAMABLE_REGION)
