
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
      'Kaiser Permanent Los Angeles Medical Center',
      '4867 Sunset Blvd
Los Angeles, CA 90027',
      'Los Angeles',
      'CA',
      'Mitchblush@yahoo.com',
      'No',
      '34.0983524',
      '-118.2948016'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanent Los Angeles Medical Center'
        AND o.latitude = '34.0983524'
        AND o.longitude = '-118.2948016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanent Los Angeles Medical Center'
        AND o.latitude = '34.0983524'
        AND o.longitude = '-118.2948016'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanent Los Angeles Medical Center'
        AND o.latitude = '34.0983524'
        AND o.longitude = '-118.2948016'));

COMMIT;
