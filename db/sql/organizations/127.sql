
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
      'University Health System',
      '4502 Medical Drive
San Antonio, TX 78229',
      'San Antonio',
      'TX',
      'ValueAnalysis@uhs-Sa.com',
      'Will need to confirm, depending on product.',
      '29.5078141',
      '-98.5774288'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Health System'
        AND o.latitude = '29.5078141'
        AND o.longitude = '-98.5774288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Health System'
        AND o.latitude = '29.5078141'
        AND o.longitude = '-98.5774288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Health System'
        AND o.latitude = '29.5078141'
        AND o.longitude = '-98.5774288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Health System'
        AND o.latitude = '29.5078141'
        AND o.longitude = '-98.5774288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Health System'
        AND o.latitude = '29.5078141'
        AND o.longitude = '-98.5774288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Health System'
        AND o.latitude = '29.5078141'
        AND o.longitude = '-98.5774288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Health System'
        AND o.latitude = '29.5078141'
        AND o.longitude = '-98.5774288'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Health System'
        AND o.latitude = '29.5078141'
        AND o.longitude = '-98.5774288'));

COMMIT;
