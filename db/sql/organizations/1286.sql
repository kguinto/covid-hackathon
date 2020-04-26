
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Monmouth Medical Center South Campus',
      '56 Oakland Mills Rd
Manalapan Township, NJ 07726',
      'Manalapan',
      'NJ',
      'Dropping off at Physician address to disperse to colleagues to avoid hospital exposure of donors. Call 732-939-5224 and curbside exchange can be arranged',
      'Yes',
      '40.2425697',
      '-74.3491706'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center South Campus'
        AND o.latitude = '40.2425697'
        AND o.longitude = '-74.3491706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center South Campus'
        AND o.latitude = '40.2425697'
        AND o.longitude = '-74.3491706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center South Campus'
        AND o.latitude = '40.2425697'
        AND o.longitude = '-74.3491706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center South Campus'
        AND o.latitude = '40.2425697'
        AND o.longitude = '-74.3491706'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Monmouth Medical Center South Campus'
        AND o.latitude = '40.2425697'
        AND o.longitude = '-74.3491706'));

COMMIT;
