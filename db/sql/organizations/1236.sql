
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
      'Intermountain medical center ',
      '5121 S Cottonwood St
Murray, UT 84107',
      'Murray',
      'UT',
      '',
      '',
      '40.6590658',
      '-111.891794'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Intermountain medical center '
        AND o.latitude = '40.6590658'
        AND o.longitude = '-111.891794'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Intermountain medical center '
        AND o.latitude = '40.6590658'
        AND o.longitude = '-111.891794'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Intermountain medical center '
        AND o.latitude = '40.6590658'
        AND o.longitude = '-111.891794'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Intermountain medical center '
        AND o.latitude = '40.6590658'
        AND o.longitude = '-111.891794'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Intermountain medical center '
        AND o.latitude = '40.6590658'
        AND o.longitude = '-111.891794'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Intermountain medical center '
        AND o.latitude = '40.6590658'
        AND o.longitude = '-111.891794'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Intermountain medical center '
        AND o.latitude = '40.6590658'
        AND o.longitude = '-111.891794'));

COMMIT;
