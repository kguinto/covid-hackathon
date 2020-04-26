
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
      'Sanctuary Hospice',
      '1727 S. Indiana Ave Suite G02
Chicago, IL 60616',
      'Chicago',
      'IL',
      '',
      'Yes',
      '41.858253',
      '-87.621907'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sanctuary Hospice'
        AND o.latitude = '41.858253'
        AND o.longitude = '-87.621907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sanctuary Hospice'
        AND o.latitude = '41.858253'
        AND o.longitude = '-87.621907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sanctuary Hospice'
        AND o.latitude = '41.858253'
        AND o.longitude = '-87.621907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sanctuary Hospice'
        AND o.latitude = '41.858253'
        AND o.longitude = '-87.621907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sanctuary Hospice'
        AND o.latitude = '41.858253'
        AND o.longitude = '-87.621907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sanctuary Hospice'
        AND o.latitude = '41.858253'
        AND o.longitude = '-87.621907'));

COMMIT;
