
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
      'sahara health care',
      '140 Eldridge Rd
Sugar Land, TX 77478',
      'sugar land',
      'TX',
      'sahara health care, 140 eldridge rd suite B',
      'Yes',
      '29.6257824',
      '-95.6176635'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'sahara health care'
        AND o.latitude = '29.6257824'
        AND o.longitude = '-95.6176635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'sahara health care'
        AND o.latitude = '29.6257824'
        AND o.longitude = '-95.6176635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'sahara health care'
        AND o.latitude = '29.6257824'
        AND o.longitude = '-95.6176635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'sahara health care'
        AND o.latitude = '29.6257824'
        AND o.longitude = '-95.6176635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'sahara health care'
        AND o.latitude = '29.6257824'
        AND o.longitude = '-95.6176635'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'sahara health care'
        AND o.latitude = '29.6257824'
        AND o.longitude = '-95.6176635'));

COMMIT;
