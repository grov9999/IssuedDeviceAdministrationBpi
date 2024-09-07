      *--------------------------------------------------------------*
      ****************************************************************
      * XXXXXX 05/04/15 OLSSA  PROYECTO CLIENTE TOTAL FASE 2         *
      ****************************************************************
      *--------------------------------------------------------------*
      *  SISTEMA  : BSE - BUS DE SERVICIO EMPRESARIAL                *
      *  COPY     : BPICULTK                                         *
      *  OPERACION: CONSULTA DE LOTES DE TOKEN                       *
      *  LONGITUD : 14 BYTES                                         *
      *--------------------------------------------------------------*
       01  REG-BPICULTK.
           02  BPICULTK-INPUT.
      *--------------------------------------------------------------*
      *        * AREA DE DATOS DE ENTRADA                            *
      *--------------------------------------------------------------*
0001           05  BPICULTK-COD-OPE             PIC 9(02).              0001-014
0001           05  BPICULTK-TIPO-FUNCION        PIC 9(02).              0001-014
      *            * DATOS DEL CLIENTE
0001           05  BPICULTK-MOTV-ACC            PIC X(02).              0001-014
0001           05  BPICULTK-TIPO-BANCA          PIC X(01).              0001-014
      *            * DATOS DE AUDITORIA Y CONTROL
0001           05  BPICULTK-CO-USUARIO          PIC X(10).              0001-014
0001           05  BPICULTK-CO-CANAL            PIC X(04).              0001-014
      *            * DATOS DE LOTE
0001           05  BPICULTK-DE-LOTE             PIC X(60).              0001-014
      *            * DATOS DE LOTE
0052           05  BPICULTK-OCCURS OCCURS 20 TIMES.                         0052
0052               10  BPICULTK-CO-SOLI         PIC X(12).                  0052
0052               10  BPICULTK-NUM-SERI-TOKN   PIC X(22).                  0052
      *--------------------------------------------------------------*
      *        * AREA DE DATOS DE SALIDA                             *
      *--------------------------------------------------------------*
           02  BPICULTK-OUTPUT.
      *            * DATOS DE RESPUESTA
0052           05  BPICULTK-OCCURS OCCURS 20 TIMES.                         0052
0052               10  BPICULTK-NRO-TOKEN       PIC X(22).                  0052
0052               10  BPICULTK-NRO-SOLICITUD   PIC X(12).                  0052
0052               10  BPICULTK-COD-ERROR       PIC X(02).                  0052
0052               10  BPICULTK-DES-ERROR       PIC X(60).                  0052
0052               10  BPICULTK-CO-LOTE         PIC X(12).                  0052
0052           05  BPICULTK-COD-ERROR-OUT       PIC X(02).
0052           05  BPICULTK-DES-ERROR-OUT       PIC X(60).
0052           05  BPICULTK-FILLER-OUT          PIC X(200).