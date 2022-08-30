<style>
    .container {
        position: relative;
        width: 100%;
        color: #000;
    }

    .image {
        width: 100%;
        height: auto;
    }

    .overlay {
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        opacity: 0;
        visibility: none;
        transition: opacity 0.3s;
    }

    .image:hover .overlay {
        visibility: visible;
        opacity: 1;
    }

    .text p {
        color: #fff;
        font-size: 20px;
        position: relative;
        padding-top: 400px;
        border-color: #000;
        left: 50%;
        -webkit-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
        text-align: center;
    }
</style>
<div class="recent_event_area" style="padding-top: 4rem;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <div class="section_title text-center mb-70">
                    <h3 class="mb-45">GALERI KEGIATAN SEKOLAH</h3>

                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-lg-10">
                <div class="section-top-border">
                    <div class="row gallery-item">
                        <?php foreach ($all_galeri->result() as $row) : ?>
                            <div class="container col-md-4">
                                <div class="image">
                                    <a href="<?php echo base_url() . 'assets/images/' . $row->galeri_gambar; ?>" class="img-pop-up">
                                        <div class="single-gallery-image" style="background: url(<?php echo base_url() . 'assets/images/' . $row->galeri_gambar; ?>);"></div>
                                    </a>
                                    <div class="overlay">
                                        <div class="text">
                                            <p><?php echo $row->galeri_judul; ?></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>