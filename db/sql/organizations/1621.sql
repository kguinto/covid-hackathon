
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
      'Havasu Regional Medical Center',
      '101 Civic Center Ln
Lake Havasu City, AZ 86403',
      'Lake Havasu City',
      'AZ',
      '101 Civic Center Lane
Havasu Regional Medical Center
Attn: Dr. Scott or Dr. Preston',
      '',
      '34.4803821',
      '-114.3388668'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Havasu Regional Medical Center'
        AND o.latitude = '34.4803821'
        AND o.longitude = '-114.3388668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Havasu Regional Medical Center'
        AND o.latitude = '34.4803821'
        AND o.longitude = '-114.3388668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Havasu Regional Medical Center'
        AND o.latitude = '34.4803821'
        AND o.longitude = '-114.3388668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Havasu Regional Medical Center'
        AND o.latitude = '34.4803821'
        AND o.longitude = '-114.3388668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Havasu Regional Medical Center'
        AND o.latitude = '34.4803821'
        AND o.longitude = '-114.3388668'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Havasu Regional Medical Center'
        AND o.latitude = '34.4803821'
        AND o.longitude = '-114.3388668'));

COMMIT;
