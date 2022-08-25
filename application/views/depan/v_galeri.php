<style>
    .portfolio .portfolio-item {
        margin-bottom: 30px;
    }

    .portfolio #portfolio-flters {
        padding: 0;
        margin: 0 auto 20px auto;
        list-style: none;
        text-align: center;
    }

    .portfolio #portfolio-flters li {
        cursor: pointer;
        display: inline-block;
        padding: 8px 15px 10px 15px;
        font-size: 14px;
        font-weight: 600;
        line-height: 1;
        text-transform: uppercase;
        color: #444444;
        margin-bottom: 5px;
        transition: all 0.3s ease-in-out;
        border-radius: 3px;
    }

    .portfolio #portfolio-flters li:hover,
    .portfolio #portfolio-flters li.filter-active {
        color: #fff;
        background: #3b4ef8;
    }

    .portfolio #portfolio-flters li:last-child {
        margin-right: 0;
    }

    .portfolio .portfolio-wrap {
        transition: 0.3s;
        position: relative;
        overflow: hidden;
        z-index: 1;
        background: rgba(45, 64, 95, 0.6);
    }

    .portfolio .portfolio-wrap::before {
        content: "";
        background: rgba(45, 64, 95, 0.6);
        position: absolute;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        transition: all ease-in-out 0.3s;
        z-index: 2;
        opacity: 0;
    }

    .portfolio .portfolio-wrap a {
        transition: all ease-in-out 0.3s;
    }

    .portfolio .portfolio-wrap .portfolio-info {
        opacity: 0;
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        z-index: 3;
        transition: all ease-in-out 0.3s;
        display: flex;
        flex-direction: column;
        justify-content: flex-end;
        align-items: flex-start;
        padding: 20px;
    }

    .portfolio .portfolio-wrap .portfolio-info h4 {
        font-size: 20px;
        color: #fff;
        font-weight: 600;
    }

    .portfolio .portfolio-wrap .portfolio-info p {
        color: rgba(255, 255, 255, 0.7);
        font-size: 14px;
        text-transform: uppercase;
        padding: 0;
        margin: 0;
        font-style: italic;
    }

    .portfolio .portfolio-wrap .portfolio-links {
        text-align: center;
        z-index: 4;
    }

    .portfolio .portfolio-wrap .portfolio-links a {
        color: #fff;
        margin: 0 5px 0 0;
        font-size: 28px;
        display: inline-block;
        transition: 0.3s;
    }

    .portfolio .portfolio-wrap .portfolio-links a:hover {
        color: #9da7fc;
    }

    .portfolio .portfolio-wrap:hover::before {
        opacity: 1;
    }

    .portfolio .portfolio-wrap:hover a {
        transform: scale(1.2);
    }

    .portfolio .portfolio-wrap:hover .portfolio-info {
        opacity: 1;
    }
</style>

<div class="recent_event_area" style="padding-top: 4rem;">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-8 col-md-10">
                <div class="section_title text-center mb-20">
                    <h3 class="mb-45">GALERI KEGIATAN SEKOLAH</h3>
                </div>
            </div>
        </div>
        <section id="portfolio" class="portfolio">
            <div class="row portfolio-container">
                <div class="col-lg-4 col-md-6 portfolio-item filter-app">
                    <div class="portfolio-wrap">
                        <?php foreach ($all_galeri->result() as $row) : ?>
                            <a href="<?php echo base_url() . 'assets/images/' . $row->galeri_gambar; ?>" class="img-pop-up">
                                <div class="single-gallery-image img-fluid" style="background: url(<?php echo base_url() . 'assets/images/' . $row->galeri_gambar; ?>);"></div>
                            </a>
                            <div class="portfolio-info">
                                <h4>Peresmian Website SMPN6 NEKAMESE</h4>
                            </div>
                        <?php endforeach; ?>
                    </div>
                </div>
            </div>
        </section>
    </div>
</div>