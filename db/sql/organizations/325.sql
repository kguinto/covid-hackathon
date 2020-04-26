
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
      'Norman Regional Hospital ',
      '901 N Porter Ave
Norman, OK 73071',
      'Norman',
      'OK',
      'Norman ED drive through ',
      'Yes',
      '35.2304361',
      '-97.4392801'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norman Regional Hospital '
        AND o.latitude = '35.2304361'
        AND o.longitude = '-97.4392801'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norman Regional Hospital '
        AND o.latitude = '35.2304361'
        AND o.longitude = '-97.4392801'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norman Regional Hospital '
        AND o.latitude = '35.2304361'
        AND o.longitude = '-97.4392801'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norman Regional Hospital '
        AND o.latitude = '35.2304361'
        AND o.longitude = '-97.4392801'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norman Regional Hospital '
        AND o.latitude = '35.2304361'
        AND o.longitude = '-97.4392801'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norman Regional Hospital '
        AND o.latitude = '35.2304361'
        AND o.longitude = '-97.4392801'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norman Regional Hospital '
        AND o.latitude = '35.2304361'
        AND o.longitude = '-97.4392801'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norman Regional Hospital '
        AND o.latitude = '35.2304361'
        AND o.longitude = '-97.4392801'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norman Regional Hospital '
        AND o.latitude = '35.2304361'
        AND o.longitude = '-97.4392801'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Norman Regional Hospital '
        AND o.latitude = '35.2304361'
        AND o.longitude = '-97.4392801'));

COMMIT;
