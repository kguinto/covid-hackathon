
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
      'OhioHealth Dublin Hospital',
      '7500 Hospital Dr
Dublin, OH 43016',
      'Dublin',
      'OH',
      'Please come to the main entrance and contact Marlena Thomas at 330-502-6041',
      'No',
      '40.1013876',
      '-83.1646727'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Dublin Hospital'
        AND o.latitude = '40.1013876'
        AND o.longitude = '-83.1646727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Dublin Hospital'
        AND o.latitude = '40.1013876'
        AND o.longitude = '-83.1646727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Dublin Hospital'
        AND o.latitude = '40.1013876'
        AND o.longitude = '-83.1646727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Dublin Hospital'
        AND o.latitude = '40.1013876'
        AND o.longitude = '-83.1646727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Dublin Hospital'
        AND o.latitude = '40.1013876'
        AND o.longitude = '-83.1646727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Dublin Hospital'
        AND o.latitude = '40.1013876'
        AND o.longitude = '-83.1646727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Dublin Hospital'
        AND o.latitude = '40.1013876'
        AND o.longitude = '-83.1646727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Dublin Hospital'
        AND o.latitude = '40.1013876'
        AND o.longitude = '-83.1646727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Dublin Hospital'
        AND o.latitude = '40.1013876'
        AND o.longitude = '-83.1646727'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'OhioHealth Dublin Hospital'
        AND o.latitude = '40.1013876'
        AND o.longitude = '-83.1646727'));

COMMIT;
