
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
      'Clements University Hospital (UT Southwestern Medical Center) ',
      '6201 Harry Hines Blvd
Dallas, TX 75235',
      'Dallas',
      'TX',
      'Drop off at main hospital entrance. Contact info: giving@utsouthwestern.edu ',
      'Yes',
      '32.8193657',
      '-96.8488409'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clements University Hospital (UT Southwestern Medical Center) '
        AND o.latitude = '32.8193657'
        AND o.longitude = '-96.8488409'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clements University Hospital (UT Southwestern Medical Center) '
        AND o.latitude = '32.8193657'
        AND o.longitude = '-96.8488409'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clements University Hospital (UT Southwestern Medical Center) '
        AND o.latitude = '32.8193657'
        AND o.longitude = '-96.8488409'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clements University Hospital (UT Southwestern Medical Center) '
        AND o.latitude = '32.8193657'
        AND o.longitude = '-96.8488409'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clements University Hospital (UT Southwestern Medical Center) '
        AND o.latitude = '32.8193657'
        AND o.longitude = '-96.8488409'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Clements University Hospital (UT Southwestern Medical Center) '
        AND o.latitude = '32.8193657'
        AND o.longitude = '-96.8488409'));

COMMIT;
