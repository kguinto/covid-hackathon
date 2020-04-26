
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
      'Hoboken University Medical Center ',
      '308 Willow Ave
Hoboken, NJ 07030',
      'hoboken ',
      'NJ',
      'drop off at emergency room entrance. ATTN dr melissa enriquez  ',
      'Yes',
      '40.7415814',
      '-74.0341491'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hoboken University Medical Center '
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hoboken University Medical Center '
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hoboken University Medical Center '
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hoboken University Medical Center '
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hoboken University Medical Center '
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hoboken University Medical Center '
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hoboken University Medical Center '
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hoboken University Medical Center '
        AND o.latitude = '40.7415814'
        AND o.longitude = '-74.0341491'));

COMMIT;
