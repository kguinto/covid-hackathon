
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
      'Pinnacle Senior Living',
      '1600 W Broadway Rd
Tempe, AZ 85282',
      'Tempe',
      'AZ',
      'Suite #100 drop off or mail to the attention of : Liz Billett CML',
      'Yes',
      '33.4079715',
      '-111.9651975'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('toilet paper',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('to-go boxes/containers for resident meals',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('thermometer sheaths',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pinnacle Senior Living'
        AND o.latitude = '33.4079715'
        AND o.longitude = '-111.9651975'));

COMMIT;
