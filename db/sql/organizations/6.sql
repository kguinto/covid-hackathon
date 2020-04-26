
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
      'University Orthopaedics',
      '462 Grider Street
Buffalo, NY 14228',
      'Buffalo',
      'NY',
      'Drop off at Erie County Medical Center
Attn: Karen Taylor PA-C, UBortho #2',
      'Yes',
      '42.9266256',
      '-78.831964'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Orthopaedics'
        AND o.latitude = '42.9266256'
        AND o.longitude = '-78.831964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical Masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Orthopaedics'
        AND o.latitude = '42.9266256'
        AND o.longitude = '-78.831964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Orthopaedics'
        AND o.latitude = '42.9266256'
        AND o.longitude = '-78.831964'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face Shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Orthopaedics'
        AND o.latitude = '42.9266256'
        AND o.longitude = '-78.831964'));

COMMIT;
