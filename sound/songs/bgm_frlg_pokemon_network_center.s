	.include "MPlayDef.s"

	.equ	bgm_frlg_pokemon_network_center_grp, voicegroup_86AB4DC
	.equ	bgm_frlg_pokemon_network_center_pri, 0
	.equ	bgm_frlg_pokemon_network_center_rev, reverb_set+50
	.equ	bgm_frlg_pokemon_network_center_mvl, 127
	.equ	bgm_frlg_pokemon_network_center_key, 0
	.equ	bgm_frlg_pokemon_network_center_tbs, 1
	.equ	bgm_frlg_pokemon_network_center_exg, 0
	.equ	bgm_frlg_pokemon_network_center_cmp, 1

	.section .rodata
	.global	bgm_frlg_pokemon_network_center
	.align	2

@********************** Track  1 **********************@

bgm_frlg_pokemon_network_center_1:
	.byte	KEYSH , bgm_frlg_pokemon_network_center_key+0
bgm_frlg_pokemon_network_center_1_B1:
	.byte	TEMPO , 114*bgm_frlg_pokemon_network_center_tbs/2
	.byte		VOICE , 4
	.byte		PAN   , c_v-32
	.byte		VOL   , 25*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Bn3 , v127
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
bgm_frlg_pokemon_network_center_1_000:
	.byte		N12   , En4 , v127
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
bgm_frlg_pokemon_network_center_1_001:
	.byte		N12   , Dn4 , v127
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	PEND
	.byte		        Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N03   , En4 
	.byte	W03
	.byte		        Fs4 , v120
	.byte	W03
	.byte		N06   , En4 
	.byte	W06
	.byte		N12   , Dn4 , v127
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        As3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , Gn4 
	.byte	W24
	.byte		N12   , Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_1_000
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_1_001
	.byte		N12   , Bn3 , v127
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		N24   , Cn4 
	.byte	W24
	.byte		N12   , An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		N24   , An3 
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N48   , Dn4 
	.byte	W48
	.byte		N12   , Gn4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		N24   , En4 
	.byte	W24
	.byte		N12   , Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		N24   , Fs4 
	.byte	W24
	.byte		N12   , En4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        Gn4 
	.byte	W12
	.byte		        An4 
	.byte	W12
	.byte		        Fs4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		N24   , Dn4 
	.byte	W24
	.byte		N12   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		        An3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte	GOTO
	 .word	bgm_frlg_pokemon_network_center_1_B1
	.byte	W96
	.byte	FINE

@********************** Track  2 **********************@

bgm_frlg_pokemon_network_center_2:
	.byte	KEYSH , bgm_frlg_pokemon_network_center_key+0
bgm_frlg_pokemon_network_center_2_B1:
	.byte		VOICE , 17
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Gn5 , v100
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N24   , Dn6 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N24   , Cn6 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Bn5 
	.byte	W12
bgm_frlg_pokemon_network_center_2_000:
	.byte		N12   , An5 , v100
	.byte	W12
	.byte		N36   , Fs5 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W48
	.byte	PEND
bgm_frlg_pokemon_network_center_2_001:
	.byte		N12   , Fs5 , v100
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		N24   , Bn5 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N24   , An5 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Fs5 
	.byte	W12
	.byte	PEND
	.byte		        Gn5 
	.byte	W12
	.byte		N36   , Bn5 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W48
	.byte		N12   , Gn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		N24   , Dn6 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N24   , Cn6 
	.byte	W12
	.byte		MOD   , 7
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Bn5 
	.byte	W12
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_2_000
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_2_001
	.byte		N48   , Gn5 , v100
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W24
	.byte		N24   , An5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N48   , Bn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N48   , Dn6 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Cn6 
	.byte	W12
	.byte		        Dn6 
	.byte	W12
	.byte		N03   , Cn6 
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		N06   , Cn6 
	.byte	W06
	.byte		N12   , Bn5 
	.byte	W12
	.byte		N48   , An5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N48   , Fs5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N48   , An5 
	.byte	W12
	.byte		MOD   , 6
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		N48   , Gn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N48   , Bn5 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N48   , Dn6 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Cn6 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		        Dn6 
	.byte	W12
	.byte		N48   , En6 
	.byte	W09
	.byte		MOD   , 7
	.byte	W15
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N24   , Dn6 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		        0
	.byte		N12   , Cn6 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		N48   , Cn6 
	.byte	W12
	.byte		MOD   , 7
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Bn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		N48   , Gn5 
	.byte	W15
	.byte		MOD   , 7
	.byte	W09
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        60*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte		        48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W06
	.byte	GOTO
	 .word	bgm_frlg_pokemon_network_center_2_B1
	.byte	W24
	.byte		MOD   , 0
	.byte		VOL   , 84*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W72
	.byte	FINE

@********************** Track  3 **********************@

bgm_frlg_pokemon_network_center_3:
	.byte	KEYSH , bgm_frlg_pokemon_network_center_key+0
bgm_frlg_pokemon_network_center_3_B1:
	.byte		VOICE , 81
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v-32
	.byte		VOL   , 30*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		PAN   , c_v+32
	.byte		N06   , Gn3 , v127
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
bgm_frlg_pokemon_network_center_3_000:
	.byte		PAN   , c_v+32
	.byte		N06   , An3 , v127
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
bgm_frlg_pokemon_network_center_3_001:
	.byte		PAN   , c_v+32
	.byte		N06   , An3 , v127
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v+32
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Bn3 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        Dn4 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Cn4 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_3_000
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_3_001
	.byte		PAN   , c_v+32
	.byte		N06   , Gn3 , v127
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        Bn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Gn3 
	.byte	W12
	.byte		        En4 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , Dn4 
	.byte	W12
	.byte		        Cn4 
	.byte	W12
	.byte		VOICE , 48
	.byte		PAN   , c_v+32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N12   , Cn3 
	.byte	W12
	.byte		N06   , En3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , Cs3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , An2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+32
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		PAN   , c_v-33
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte	GOTO
	 .word	bgm_frlg_pokemon_network_center_3_B1
	.byte	W96
	.byte	FINE

@********************** Track  4 **********************@

bgm_frlg_pokemon_network_center_4:
	.byte	KEYSH , bgm_frlg_pokemon_network_center_key+0
bgm_frlg_pokemon_network_center_4_B1:
	.byte		VOICE , 33
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		LFOS  , 44
	.byte		PAN   , c_v+0
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N36   , Gn1 , v127
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W24
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Dn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N36   , Fs1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W24
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Dn2 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W24
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte	W24
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N24   , Dn1 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Dn2 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W24
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		N06   , Gn1 
	.byte	W12
	.byte		N24   , Dn1 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N36   , Dn2 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W24
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N36   , Gn1 
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 8
	.byte	W24
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Dn2 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Cn2 
	.byte	W12
	.byte		        Bn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N36   , Dn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W24
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte	W24
	.byte		N06   , Fs1 
	.byte	W06
	.byte		        En1 
	.byte	W06
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N36   , Dn2 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		        An1 
	.byte	W12
	.byte		N36   , Bn1 
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 8
	.byte	W24
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , An1 
	.byte	W12
	.byte		N36   , Gn1 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W24
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Dn1 
	.byte	W12
	.byte		N30   , Gn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W24
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   
	.byte	W48
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N30   , Gn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W24
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N24   , Gn2 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N30   , Gn1 
	.byte	W09
	.byte		MOD   , 8
	.byte	W03
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N06   
	.byte	W24
	.byte		N24   , Dn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N30   , Gn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N06   
	.byte	W12
	.byte		N06   
	.byte	W12
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Gn1 
	.byte	W12
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Dn1 
	.byte	W12
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N30   , Gn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N06   
	.byte	W48
	.byte		N12   , Fs1 
	.byte	W12
	.byte		N30   , Gn1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		MOD   , 0
	.byte	W12
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N06   
	.byte	W24
	.byte		N06   
	.byte	W12
	.byte		N12   
	.byte	W12
	.byte		        Gs1 
	.byte	W12
	.byte		N24   , An1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Fs1 
	.byte	W12
	.byte		        Fn1 
	.byte	W12
	.byte		N24   , Fs1 
	.byte	W06
	.byte		MOD   , 8
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N24   , Cn2 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W12
	.byte		        96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		MOD   , 0
	.byte		N12   , Gn1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		        En1 
	.byte	W12
	.byte		        Fs1 
	.byte	W12
	.byte		N48   , Gn1 
	.byte	W06
	.byte		MOD   , 6
	.byte	W06
	.byte		VOL   , 72*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	W36
	.byte	GOTO
	 .word	bgm_frlg_pokemon_network_center_4_B1
	.byte		MOD   , 0
	.byte	W96
	.byte	FINE

@********************** Track  5 **********************@

bgm_frlg_pokemon_network_center_5:
	.byte	KEYSH , bgm_frlg_pokemon_network_center_key+0
bgm_frlg_pokemon_network_center_5_B1:
	.byte		VOICE , 48
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		PAN   , c_v+11
	.byte		VOL   , 36*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N12   , Bn2 , v120
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N12   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		N36   , An2 
	.byte	W36
	.byte		N18   , Dn3 , v127
	.byte	W18
	.byte		N03   , Cn3 , v076
	.byte	W03
	.byte		        Bn2 
	.byte	W03
	.byte		N12   , An2 , v127
	.byte	W12
	.byte		        Cn3 , v120
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        Cn3 
	.byte	W24
	.byte		N12   , An2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N36   , Dn3 
	.byte	W36
	.byte		N12   , Dn3 , v127
	.byte	W12
	.byte		N24   , Fs3 
	.byte	W36
	.byte		N12   , Bn2 , v120
	.byte	W12
	.byte		        Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		N24   , Gn3 
	.byte	W24
	.byte		        An3 
	.byte	W24
	.byte		N12   , Bn3 
	.byte	W12
	.byte		        Fs3 
	.byte	W15
	.byte		N32   , Dn3 
	.byte	W32
	.byte	W01
	.byte		N18   , Cn3 , v127
	.byte	W18
	.byte		N03   , Bn2 , v080
	.byte	W03
	.byte		        As2 
	.byte	W03
	.byte		N12   , An2 , v127
	.byte	W24
	.byte		        An2 , v120
	.byte	W12
	.byte		        Fs2 
	.byte	W12
	.byte		        An2 
	.byte	W12
	.byte		N24   , Dn3 
	.byte	W24
	.byte		        En3 
	.byte	W24
	.byte		N12   , Fs3 
	.byte	W12
	.byte		        Gn3 
	.byte	W12
	.byte		N36   , Bn3 
	.byte	W84
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	bgm_frlg_pokemon_network_center_5_B1
	.byte	W96
	.byte	FINE

@********************** Track  6 **********************@

bgm_frlg_pokemon_network_center_6:
	.byte	KEYSH , bgm_frlg_pokemon_network_center_key+0
bgm_frlg_pokemon_network_center_6_B1:
	.byte		VOICE , 14
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte		VOL   , 36*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		PAN   , c_v-12
	.byte	W96
	.byte	W48
	.byte		N18   , Dn5 , v127
	.byte	W18
	.byte		N03   , Cn5 , v064
	.byte	W03
	.byte		        Bn4 
	.byte	W03
	.byte		N12   , An4 , v127
	.byte	W24
	.byte	W96
	.byte	W48
	.byte		        Dn5 , v120
	.byte	W12
	.byte		N24   , Fs5 
	.byte	W36
	.byte	W96
	.byte	W48
	.byte		N18   , Cn5 , v127
	.byte	W18
	.byte		N03   , Bn4 , v068
	.byte	W03
	.byte		        As4 
	.byte	W03
	.byte		N12   , An4 , v127
	.byte	W24
	.byte	W96
	.byte	W48
	.byte		        Bn4 , v120
	.byte	W12
	.byte		        Cn5 
	.byte	W12
	.byte		N24   , Dn5 
	.byte	W24
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	bgm_frlg_pokemon_network_center_6_B1
	.byte	W96
	.byte	FINE

@********************** Track  7 **********************@

bgm_frlg_pokemon_network_center_7:
	.byte	KEYSH , bgm_frlg_pokemon_network_center_key+0
bgm_frlg_pokemon_network_center_7_B1:
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		VOL   , 30*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		PAN   , c_v-60
	.byte		N06   , Gn2 , v127
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
bgm_frlg_pokemon_network_center_7_000:
	.byte		PAN   , c_v-60
	.byte		N06   , An2 , v127
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
bgm_frlg_pokemon_network_center_7_001:
	.byte		PAN   , c_v-60
	.byte		N06   , An2 , v127
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , An2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte	PEND
	.byte		PAN   , c_v-60
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , Bn2 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Dn3 
	.byte	W12
	.byte		PAN   , c_v-60
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Cn3 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_7_000
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_7_001
	.byte		PAN   , c_v-60
	.byte		N06   , Gn2 , v127
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        Bn2 
	.byte	W12
	.byte		PAN   , c_v-61
	.byte		N06   , Gn2 
	.byte	W12
	.byte		        En3 
	.byte	W12
	.byte		PAN   , c_v+63
	.byte		N06   , Dn3 
	.byte	W12
	.byte		        Cn3 
	.byte	W12
	.byte		VOICE , 80
	.byte		PAN   , c_v-62
	.byte		VOL   , 29*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N09   , Bn3 , v120
	.byte	W12
	.byte		N03   , Bn3 , v048
	.byte	W12
	.byte		        Bn3 , v064
	.byte	W12
	.byte		        Bn3 , v048
	.byte	W12
	.byte		N09   , Bn3 , v120
	.byte	W12
	.byte		N03   , Bn3 , v048
	.byte	W12
	.byte		        Bn3 , v064
	.byte	W12
	.byte		        Bn3 , v048
	.byte	W12
bgm_frlg_pokemon_network_center_7_002:
	.byte		N09   , Cn4 , v120
	.byte	W12
	.byte		N03   , Cn4 , v048
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		N09   , Cn4 , v120
	.byte	W12
	.byte		N03   , Cn4 , v048
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		N09   , Cn4 , v120
	.byte	W12
	.byte		N03   , Cn4 , v048
	.byte	W12
	.byte	PEND
	.byte		N09   , Dn4 , v120
	.byte	W12
	.byte		N03   , Dn4 , v048
	.byte	W12
	.byte		        Dn4 , v064
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W12
	.byte		N09   , Dn4 , v120
	.byte	W12
	.byte		N03   , Dn4 , v048
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		        Cn4 , v048
	.byte	W12
	.byte		N09   , Bn3 , v120
	.byte	W12
	.byte		N03   , Bn3 , v048
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		N09   , Cn4 , v120
	.byte	W12
	.byte		N03   , Cn4 , v048
	.byte	W12
	.byte		        Dn4 , v064
	.byte	W12
	.byte		N09   , Dn4 , v120
	.byte	W12
	.byte		N03   , Dn4 , v048
	.byte	W12
	.byte		N09   , Bn3 , v120
	.byte	W12
	.byte		N03   , Bn3 , v048
	.byte	W12
	.byte		        Bn3 , v064
	.byte	W12
	.byte		        Bn3 , v048
	.byte	W12
	.byte		N09   , Bn3 , v120
	.byte	W12
	.byte		N03   , Bn3 , v048
	.byte	W12
	.byte		        Bn3 , v064
	.byte	W12
	.byte		        Bn3 , v048
	.byte	W12
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_7_002
	.byte		N09   , Dn4 , v120
	.byte	W12
	.byte		N03   , Dn4 , v048
	.byte	W12
	.byte		        Dn4 , v064
	.byte	W12
	.byte		        Dn4 , v048
	.byte	W12
	.byte		N09   , Cn4 , v120
	.byte	W12
	.byte		N03   , Cn4 , v048
	.byte	W12
	.byte		        Cn4 , v064
	.byte	W12
	.byte		        Cn4 , v048
	.byte	W12
	.byte		N09   , Bn3 , v120
	.byte	W12
	.byte		N03   , Bn3 , v048
	.byte	W12
	.byte		        Bn3 , v064
	.byte	W12
	.byte		N09   , Bn3 , v120
	.byte	W12
	.byte		N03   , Bn3 , v048
	.byte	W12
	.byte		        Bn3 , v064
	.byte	W12
	.byte		N09   , Bn3 , v120
	.byte	W12
	.byte		N03   , Bn3 , v048
	.byte	W12
	.byte	GOTO
	 .word	bgm_frlg_pokemon_network_center_7_B1
	.byte	W96
	.byte	FINE

@********************** Track  8 **********************@

bgm_frlg_pokemon_network_center_8:
	.byte	KEYSH , bgm_frlg_pokemon_network_center_key+0
bgm_frlg_pokemon_network_center_8_B1:
	.byte		VOICE , 80
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 48*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		BEND  , c_v+2
	.byte	W02
	.byte		        c_v+1
	.byte	W92
	.byte	W02
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte		VOICE , 81
	.byte		PAN   , c_v+63
	.byte		VOL   , 28*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N09   , Gn4 , v120
	.byte	W12
	.byte		N03   , Gn4 , v048
	.byte	W12
	.byte		        Gn4 , v064
	.byte	W12
	.byte		        Gn4 , v048
	.byte	W12
	.byte		N09   , Gn4 , v120
	.byte	W12
	.byte		N03   , Gn4 , v048
	.byte	W12
	.byte		        Gn4 , v064
	.byte	W12
	.byte		        Gn4 , v048
	.byte	W12
bgm_frlg_pokemon_network_center_8_000:
	.byte		N09   , Gn4 , v120
	.byte	W12
	.byte		N03   , Gn4 , v048
	.byte	W12
	.byte		        Gn4 , v064
	.byte	W12
	.byte		N09   , Gn4 , v120
	.byte	W12
	.byte		N03   , Gn4 , v048
	.byte	W12
	.byte		        Gn4 , v064
	.byte	W12
	.byte		N09   , Gn4 , v120
	.byte	W12
	.byte		N03   , Gn4 , v048
	.byte	W12
	.byte	PEND
bgm_frlg_pokemon_network_center_8_001:
	.byte		N09   , Gn4 , v120
	.byte	W12
	.byte		N03   , Gn4 , v048
	.byte	W12
	.byte		        Gn4 , v064
	.byte	W12
	.byte		        Gn4 , v048
	.byte	W12
	.byte		N09   , Gn4 , v120
	.byte	W12
	.byte		N03   , Gn4 , v048
	.byte	W12
	.byte		        Gn4 , v064
	.byte	W12
	.byte		        Gn4 , v048
	.byte	W12
	.byte	PEND
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_8_000
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_8_001
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_8_000
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_8_001
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_8_000
	.byte	GOTO
	 .word	bgm_frlg_pokemon_network_center_8_B1
	.byte	W96
	.byte	FINE

@********************** Track  9 **********************@

bgm_frlg_pokemon_network_center_9:
	.byte	KEYSH , bgm_frlg_pokemon_network_center_key+0
bgm_frlg_pokemon_network_center_9_B1:
	.byte		VOICE , 92
	.byte		LFOS  , 44
	.byte		XCMD  , xIECV , 18
	.byte		        xIECV , 16
	.byte		BENDR , 12
	.byte		PAN   , c_v+0
	.byte		VOL   , 24*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte		N03   , Gn5 , v100
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Dn6 
	.byte	W24
	.byte		        Cn6 
	.byte	W24
	.byte		        Bn5 
	.byte	W12
bgm_frlg_pokemon_network_center_9_000:
	.byte		N03   , An5 , v100
	.byte	W12
	.byte		        Fs5 
	.byte	W84
	.byte	PEND
bgm_frlg_pokemon_network_center_9_001:
	.byte		N03   , Fs5 , v100
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Fs5 
	.byte	W12
	.byte		        Bn5 
	.byte	W24
	.byte		        An5 
	.byte	W24
	.byte		        Fs5 
	.byte	W12
	.byte	PEND
	.byte		        Gn5 
	.byte	W12
	.byte		        Bn5 
	.byte	W84
	.byte		        Gn5 
	.byte	W12
	.byte		        Dn5 
	.byte	W12
	.byte		        Gn5 
	.byte	W12
	.byte		        Dn6 
	.byte	W24
	.byte		        Cn6 
	.byte	W24
	.byte		        Bn5 
	.byte	W12
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_9_000
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_9_001
	.byte		N03   , Gn5 , v100
	.byte	W72
	.byte		        An5 
	.byte	W24
bgm_frlg_pokemon_network_center_9_002:
	.byte		N03   , Bn5 , v100
	.byte	W48
	.byte		        Dn6 
	.byte	W48
	.byte	PEND
	.byte		        Cn6 
	.byte	W12
	.byte		        Dn6 
	.byte	W12
	.byte		        Cn6 
	.byte	W03
	.byte		        Dn6 
	.byte	W03
	.byte		        Cn6 
	.byte	W06
	.byte		        Bn5 
	.byte	W12
	.byte		        An5 
	.byte	W48
	.byte		        Fs5 
	.byte	W48
	.byte		        An5 
	.byte	W48
bgm_frlg_pokemon_network_center_9_003:
	.byte		N03   , Bn5 , v100
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        An5 
	.byte	W12
	.byte		        Gn5 
	.byte	W48
	.byte	PEND
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_9_002
	.byte		N03   , Cn6 , v100
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W12
	.byte		        Dn6 
	.byte	W12
	.byte		        En6 
	.byte	W48
	.byte		        Dn6 
	.byte	W24
	.byte		        Cn6 
	.byte	W12
	.byte		        Bn5 
	.byte	W12
	.byte		        Cn6 
	.byte	W48
	.byte	PATT
	 .word	bgm_frlg_pokemon_network_center_9_003
	.byte	GOTO
	 .word	bgm_frlg_pokemon_network_center_9_B1
	.byte	W96
	.byte	FINE

@********************** Track 10 **********************@

bgm_frlg_pokemon_network_center_10:
	.byte		VOL   , 96*bgm_frlg_pokemon_network_center_mvl/mxv
	.byte	KEYSH , bgm_frlg_pokemon_network_center_key+0
bgm_frlg_pokemon_network_center_10_B1:
	.byte		VOICE , 1
	.byte		LFOS  , 44
	.byte		BENDR , 12
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W96
	.byte	W24
	.byte		N12   , Cn6 , v120
	.byte	W72
	.byte	W96
	.byte	W96
	.byte	GOTO
	 .word	bgm_frlg_pokemon_network_center_10_B1
	.byte	W96
	.byte	FINE

@******************************************************@
	.align	2

bgm_frlg_pokemon_network_center:
	.byte	10	@ NumTrks
	.byte	0	@ NumBlks
	.byte	bgm_frlg_pokemon_network_center_pri	@ Priority
	.byte	bgm_frlg_pokemon_network_center_rev	@ Reverb.

	.word	bgm_frlg_pokemon_network_center_grp

	.word	bgm_frlg_pokemon_network_center_1
	.word	bgm_frlg_pokemon_network_center_2
	.word	bgm_frlg_pokemon_network_center_3
	.word	bgm_frlg_pokemon_network_center_4
	.word	bgm_frlg_pokemon_network_center_5
	.word	bgm_frlg_pokemon_network_center_6
	.word	bgm_frlg_pokemon_network_center_7
	.word	bgm_frlg_pokemon_network_center_8
	.word	bgm_frlg_pokemon_network_center_9
	.word	bgm_frlg_pokemon_network_center_10

	.end
