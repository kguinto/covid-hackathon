
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
      'The Family Health Centers PA',
      '206 Asheland Ave
Asheville, NC 28801',
      'Asheville',
      'NC',
      '',
      'Yes',
      '35.586815',
      '-82.5558221'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Family Health Centers PA'
        AND o.latitude = '35.586815'
        AND o.longitude = '-82.5558221'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Family Health Centers PA'
        AND o.latitude = '35.586815'
        AND o.longitude = '-82.5558221'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Family Health Centers PA'
        AND o.latitude = '35.586815'
        AND o.longitude = '-82.5558221'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Family Health Centers PA'
        AND o.latitude = '35.586815'
        AND o.longitude = '-82.5558221'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Family Health Centers PA'
        AND o.latitude = '35.586815'
        AND o.longitude = '-82.5558221'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Family Health Centers PA'
        AND o.latitude = '35.586815'
        AND o.longitude = '-82.5558221'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Family Health Centers PA'
        AND o.latitude = '35.586815'
        AND o.longitude = '-82.5558221'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Family Health Centers PA'
        AND o.latitude = '35.586815'
        AND o.longitude = '-82.5558221'));

COMMIT;
