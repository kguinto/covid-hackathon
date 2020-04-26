
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
      'Flushing hospital medical center',
      '146-06 Delaware Ave
Flushing, NY 11355',
      'Flushing',
      'NY',
      'Side entrance on Burling Street this is EMS HOUSE where we keep gear',
      'Yes',
      '40.755891',
      '-73.8179907'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing hospital medical center'
        AND o.latitude = '40.755891'
        AND o.longitude = '-73.8179907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing hospital medical center'
        AND o.latitude = '40.755891'
        AND o.longitude = '-73.8179907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing hospital medical center'
        AND o.latitude = '40.755891'
        AND o.longitude = '-73.8179907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing hospital medical center'
        AND o.latitude = '40.755891'
        AND o.longitude = '-73.8179907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing hospital medical center'
        AND o.latitude = '40.755891'
        AND o.longitude = '-73.8179907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing hospital medical center'
        AND o.latitude = '40.755891'
        AND o.longitude = '-73.8179907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing hospital medical center'
        AND o.latitude = '40.755891'
        AND o.longitude = '-73.8179907'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Flushing hospital medical center'
        AND o.latitude = '40.755891'
        AND o.longitude = '-73.8179907'));

COMMIT;
