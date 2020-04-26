
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
      'Rio at Mainland Center',
      '1011 Mainland Center Dr
Texas City, TX 77591',
      'Texas City',
      'TX',
      'Please call to coordinate drop off in parking lot- 713-358-0700',
      'As long as it''s unused we''ll take it!',
      '29.3922265',
      '-94.9885923'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Mainland Center'
        AND o.latitude = '29.3922265'
        AND o.longitude = '-94.9885923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Mainland Center'
        AND o.latitude = '29.3922265'
        AND o.longitude = '-94.9885923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Mainland Center'
        AND o.latitude = '29.3922265'
        AND o.longitude = '-94.9885923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Mainland Center'
        AND o.latitude = '29.3922265'
        AND o.longitude = '-94.9885923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Mainland Center'
        AND o.latitude = '29.3922265'
        AND o.longitude = '-94.9885923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Mainland Center'
        AND o.latitude = '29.3922265'
        AND o.longitude = '-94.9885923'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Rio at Mainland Center'
        AND o.latitude = '29.3922265'
        AND o.longitude = '-94.9885923'));

COMMIT;
