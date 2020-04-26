
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
      'Kaiser Permanente Los Angeles',
      '1526 N Edgemont St
Los Angeles, CA 90027',
      'Los Angeles',
      'CA',
      '1526 Edgemont St. Los Angeles CA 90027',
      'Yes',
      '34.0988382',
      '-118.2954537'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Los Angeles'
        AND o.latitude = '34.0988382'
        AND o.longitude = '-118.2954537'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente Los Angeles'
        AND o.latitude = '34.0988382'
        AND o.longitude = '-118.2954537'));

COMMIT;
