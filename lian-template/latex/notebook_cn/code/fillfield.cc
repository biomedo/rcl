void fillField(xRegion& reg, xField &field, xEval<xTensor2> & eval_stress)
{
    for(xIter it=reg.begin(0); it!=reg.end(0); ++it){
        mEntity *e = *it; mVertex *v = (mVertex*) e;
        int nelem=e->size(2); double value=0.;
        for(int i=0;i<nelem;++i) {
            mEntity {*}elem=e->get(2,i);
            xGeomElem geo_appro(elem); xTensor2 stress;
            eval_stress(geo_appro,geo_appro,stress);
            value+=stress.vonMises();
        }
        field.setVal(e, val/nelem);
        v->point()(0);
    }
}
