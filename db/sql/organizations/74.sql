
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
      'Huntsville Hospital',
      '101 Sivley Rd SW
Huntsville, AL 35801',
      'Huntsville',
      'AL',
      'TBD',
      'Unsure',
      '34.7212005',
      '-86.5806617'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Huntsville Hospital'
        AND o.latitude = '34.7212005'
        AND o.longitude = '-86.5806617'));

COMMIT;
