
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
      'Medical University of South Carolina',
      '4295 Arco Lane
Charleston, SC 29418',
      'Charleston',
      'SC',
      '',
      'unsure',
      '32.8654996',
      '-80.0026591'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical University of South Carolina'
        AND o.latitude = '32.8654996'
        AND o.longitude = '-80.0026591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical University of South Carolina'
        AND o.latitude = '32.8654996'
        AND o.longitude = '-80.0026591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical University of South Carolina'
        AND o.latitude = '32.8654996'
        AND o.longitude = '-80.0026591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical University of South Carolina'
        AND o.latitude = '32.8654996'
        AND o.longitude = '-80.0026591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical University of South Carolina'
        AND o.latitude = '32.8654996'
        AND o.longitude = '-80.0026591'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Medical University of South Carolina'
        AND o.latitude = '32.8654996'
        AND o.longitude = '-80.0026591'));

COMMIT;
