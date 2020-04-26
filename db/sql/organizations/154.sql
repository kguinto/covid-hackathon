
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
      'Mercy Medical Center ',
      '345 St Paul Place
Baltimore, MD 21202',
      'Baltimore',
      'MD',
      'Used masks ok. Mail w/Attn: Dr. Robert Alas, Chair of OB/Gyn. Dropoff at Bunting Building security desk.',
      'Yes',
      '39.293785',
      '-76.613337'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Medical Center '
        AND o.latitude = '39.293785'
        AND o.longitude = '-76.613337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Medical Center '
        AND o.latitude = '39.293785'
        AND o.longitude = '-76.613337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Medical Center '
        AND o.latitude = '39.293785'
        AND o.longitude = '-76.613337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Medical Center '
        AND o.latitude = '39.293785'
        AND o.longitude = '-76.613337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Medical Center '
        AND o.latitude = '39.293785'
        AND o.longitude = '-76.613337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Medical Center '
        AND o.latitude = '39.293785'
        AND o.longitude = '-76.613337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Medical Center '
        AND o.latitude = '39.293785'
        AND o.longitude = '-76.613337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Medical Center '
        AND o.latitude = '39.293785'
        AND o.longitude = '-76.613337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('swabs',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Medical Center '
        AND o.latitude = '39.293785'
        AND o.longitude = '-76.613337'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('respirtaors',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mercy Medical Center '
        AND o.latitude = '39.293785'
        AND o.longitude = '-76.613337'));

COMMIT;
