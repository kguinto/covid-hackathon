
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
      'Marcus Daly Memorial Hospital',
      '1224 W Main St
Hamilton, MT 59840',
      'Hamilton',
      'MT',
      'Call 406-375-4650 between 8 -5 pm so someone can meet you outside to collect. ',
      'No',
      '46.2465843',
      '-114.1740159'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marcus Daly Memorial Hospital'
        AND o.latitude = '46.2465843'
        AND o.longitude = '-114.1740159'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marcus Daly Memorial Hospital'
        AND o.latitude = '46.2465843'
        AND o.longitude = '-114.1740159'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marcus Daly Memorial Hospital'
        AND o.latitude = '46.2465843'
        AND o.longitude = '-114.1740159'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marcus Daly Memorial Hospital'
        AND o.latitude = '46.2465843'
        AND o.longitude = '-114.1740159'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marcus Daly Memorial Hospital'
        AND o.latitude = '46.2465843'
        AND o.longitude = '-114.1740159'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marcus Daly Memorial Hospital'
        AND o.latitude = '46.2465843'
        AND o.longitude = '-114.1740159'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marcus Daly Memorial Hospital'
        AND o.latitude = '46.2465843'
        AND o.longitude = '-114.1740159'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Marcus Daly Memorial Hospital'
        AND o.latitude = '46.2465843'
        AND o.longitude = '-114.1740159'));

COMMIT;
