
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
      'Baylor Scott and White (ER)',
      '700 Scott and White Dr
College Station, TX 77845',
      'College Station',
      'TX',
      'Dropoff at EMS doors',
      'Not sure but can''t imagine not',
      '30.5822251',
      '-96.2795053'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White (ER)'
        AND o.latitude = '30.5822251'
        AND o.longitude = '-96.2795053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White (ER)'
        AND o.latitude = '30.5822251'
        AND o.longitude = '-96.2795053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White (ER)'
        AND o.latitude = '30.5822251'
        AND o.longitude = '-96.2795053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White (ER)'
        AND o.latitude = '30.5822251'
        AND o.longitude = '-96.2795053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White (ER)'
        AND o.latitude = '30.5822251'
        AND o.longitude = '-96.2795053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White (ER)'
        AND o.latitude = '30.5822251'
        AND o.longitude = '-96.2795053'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Baylor Scott and White (ER)'
        AND o.latitude = '30.5822251'
        AND o.longitude = '-96.2795053'));

COMMIT;
