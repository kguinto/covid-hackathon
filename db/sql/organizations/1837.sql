
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
      'Auberge of Orchard Park',
      '5520 Lincoln Ave
Morton Grove, IL 60053',
      'Morton Grove ',
      'IL',
      '',
      'Yes',
      '42.0352615',
      '-87.7664165'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Auberge of Orchard Park'
        AND o.latitude = '42.0352615'
        AND o.longitude = '-87.7664165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Auberge of Orchard Park'
        AND o.latitude = '42.0352615'
        AND o.longitude = '-87.7664165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Auberge of Orchard Park'
        AND o.latitude = '42.0352615'
        AND o.longitude = '-87.7664165'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Auberge of Orchard Park'
        AND o.latitude = '42.0352615'
        AND o.longitude = '-87.7664165'));

COMMIT;
