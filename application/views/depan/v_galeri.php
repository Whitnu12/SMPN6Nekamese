<div class="recent_event_area" style="padding-top: 4rem;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <div class="section_title text-center mb-20">
                    <h3 class="mb-45">GALERI KEGIATAN SEKOLAH</h3>

                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-12">
                <div class="section-top-border">
                    <div class="row gallery-item">

                        <?php foreach ($all_galeri->result() as $row) : ?>
                            <div class="col-md-4">
                                <a href="<?php echo base_url() . 'assets/images/' . $row->galeri_gambar; ?>" class="img-pop-up">
                                    <div class="single-gallery-image" style="background: url(<?php echo base_url() . 'assets/images/' . $row->galeri_gambar; ?>);"></div>
                                </a>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>