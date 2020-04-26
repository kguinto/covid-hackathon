
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
      'Immediate Medical Care MD',
      '240D S Highland Ave
Ossining, NY 10562',
      'Ossining',
      'NY',
      'Any way possible.  Please call (732) 523-5102 to make arrangements.',
      'Unsure',
      '41.1431782',
      '-73.8622088'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immediate Medical Care MD'
        AND o.latitude = '41.1431782'
        AND o.longitude = '-73.8622088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immediate Medical Care MD'
        AND o.latitude = '41.1431782'
        AND o.longitude = '-73.8622088'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Immediate Medical Care MD'
        AND o.latitude = '41.1431782'
        AND o.longitude = '-73.8622088'));

COMMIT;
