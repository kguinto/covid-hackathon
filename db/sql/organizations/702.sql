
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
      'Children''s Clinic Ltd',
      '321 Main Street 
Newport News, VA 23601',
      'Newport News',
      'VA',
      'Give to nurse at front desk',
      'Yes',
      '37.0365448',
      '-76.4572576'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Clinic Ltd'
        AND o.latitude = '37.0365448'
        AND o.longitude = '-76.4572576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Clinic Ltd'
        AND o.latitude = '37.0365448'
        AND o.longitude = '-76.4572576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Clinic Ltd'
        AND o.latitude = '37.0365448'
        AND o.longitude = '-76.4572576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Clinic Ltd'
        AND o.latitude = '37.0365448'
        AND o.longitude = '-76.4572576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Clinic Ltd'
        AND o.latitude = '37.0365448'
        AND o.longitude = '-76.4572576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Clinic Ltd'
        AND o.latitude = '37.0365448'
        AND o.longitude = '-76.4572576'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Children''s Clinic Ltd'
        AND o.latitude = '37.0365448'
        AND o.longitude = '-76.4572576'));

COMMIT;
