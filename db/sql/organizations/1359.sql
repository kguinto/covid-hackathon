
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
      'Valle Vista Convalescent Hospital',
      '1025 W 2nd Ave
Escondido, CA 92025',
      'Escondido ',
      'CA',
      'Front door or mail',
      'Yes',
      '33.1118125',
      '-117.0931525'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valle Vista Convalescent Hospital'
        AND o.latitude = '33.1118125'
        AND o.longitude = '-117.0931525'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valle Vista Convalescent Hospital'
        AND o.latitude = '33.1118125'
        AND o.longitude = '-117.0931525'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valle Vista Convalescent Hospital'
        AND o.latitude = '33.1118125'
        AND o.longitude = '-117.0931525'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valle Vista Convalescent Hospital'
        AND o.latitude = '33.1118125'
        AND o.longitude = '-117.0931525'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valle Vista Convalescent Hospital'
        AND o.latitude = '33.1118125'
        AND o.longitude = '-117.0931525'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valle Vista Convalescent Hospital'
        AND o.latitude = '33.1118125'
        AND o.longitude = '-117.0931525'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valle Vista Convalescent Hospital'
        AND o.latitude = '33.1118125'
        AND o.longitude = '-117.0931525'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valle Vista Convalescent Hospital'
        AND o.latitude = '33.1118125'
        AND o.longitude = '-117.0931525'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valle Vista Convalescent Hospital'
        AND o.latitude = '33.1118125'
        AND o.longitude = '-117.0931525'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Valle Vista Convalescent Hospital'
        AND o.latitude = '33.1118125'
        AND o.longitude = '-117.0931525'));

COMMIT;
