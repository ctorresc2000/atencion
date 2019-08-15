                <nav class="sidebar-nav">
                    <ul class="nav">
                        <li @click='menu=0' class="nav-item">
                            <a class="nav-link active" href="#"><i class="icon-speedometer"></i> Escritorio</a>
                        </li>
                        <li class="nav-title">
                            Mantenimiento
                        </li>
                        <li class="nav-item nav-dropdown">
                            <a class="nav-link nav-dropdown-toggle" href="#"><i class="fas fa-school"></i> Colegio</a>
                            <ul class="nav-dropdown-items">
                                <li @click='menu=1' class="nav-item">
                                    <a class="nav-link" href="#"><i class="far fa-edit"></i> Alumnas Matriculadas</a>
                                </li>
                            </ul>
                        </li>

                        <li class="nav-item nav-dropdown">
                            <a class="nav-link nav-dropdown-toggle" href="#"><i class="fas fa-paper-plane"></i> Derivaciones</a>
                            <ul class="nav-dropdown-items">
                                <li @click='menu=6' class="nav-item">
                                    <a class="nav-link" href="#"><i class="fas fa-chalkboard-teacher"></i> Conviv. Escolar</a>
                                </li>
                            </ul>
                        </li>
                        <li class="nav-item nav-dropdown">
                            <a class="nav-link nav-dropdown-toggle" href="#"><i class="fas fa-file-alt"></i> Reportes</a>
                            <ul class="nav-dropdown-items">
                                <li class="nav-item">
                                    <a @click='menu=12' class="nav-link" href="#"><i class="far fa-file-alt"></i> Reporte Atenciones</a>
                                </li>
{{--                                  <li class="nav-item">
                                    <a @click='menu=13' class="nav-link" href="#"><i class="far fa-file-alt"></i> Reporte Atenciones</a>
                                </li>  --}}
                            </ul>
                        </li>

                    </ul>
                </nav>