
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
      'Methodist North Hospital',
      '3960 New Covington Pike
Memphis, TN 38128',
      'Memphis ',
      'TN',
      '',
      'Yes',
      '35.2338797',
      '-89.8921771'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist North Hospital'
        AND o.latitude = '35.2338797'
        AND o.longitude = '-89.8921771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist North Hospital'
        AND o.latitude = '35.2338797'
        AND o.longitude = '-89.8921771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Methodist North Hospital'
        AND o.latitude = '35.2338797'
        AND o.longitude = '-89.8921771'));

COMMIT;
