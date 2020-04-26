
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
      'Abbottsford Falls Family Practice & Counseling',
      '4700 Wissahickon Ave
Philadelphia, PA 19144',
      'Philadelphia',
      'PA',
      'Unknown',
      'Unsure',
      '40.0159527',
      '-75.1724136'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abbottsford Falls Family Practice & Counseling'
        AND o.latitude = '40.0159527'
        AND o.longitude = '-75.1724136'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Abbottsford Falls Family Practice & Counseling'
        AND o.latitude = '40.0159527'
        AND o.longitude = '-75.1724136'));

COMMIT;
