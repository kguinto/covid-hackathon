
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
      'Howard County General Hospital',
      '5755 Cedar Ln
Columbia, MD 21044',
      'Columbia',
      'MD',
      'Postal mail',
      'Unsure',
      '39.2141113',
      '-76.885968'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Howard County General Hospital'
        AND o.latitude = '39.2141113'
        AND o.longitude = '-76.885968'));

COMMIT;
