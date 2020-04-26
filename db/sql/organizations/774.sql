
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
      'Speight Family Medical ',
      '403 Henslee Dr
Dickson, TN 37055',
      'Dickson',
      'TN',
      '',
      'Yes',
      '36.0800336',
      '-87.3776431'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Speight Family Medical '
        AND o.latitude = '36.0800336'
        AND o.longitude = '-87.3776431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Speight Family Medical '
        AND o.latitude = '36.0800336'
        AND o.longitude = '-87.3776431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Speight Family Medical '
        AND o.latitude = '36.0800336'
        AND o.longitude = '-87.3776431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Speight Family Medical '
        AND o.latitude = '36.0800336'
        AND o.longitude = '-87.3776431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Speight Family Medical '
        AND o.latitude = '36.0800336'
        AND o.longitude = '-87.3776431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Speight Family Medical '
        AND o.latitude = '36.0800336'
        AND o.longitude = '-87.3776431'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Speight Family Medical '
        AND o.latitude = '36.0800336'
        AND o.longitude = '-87.3776431'));

COMMIT;
