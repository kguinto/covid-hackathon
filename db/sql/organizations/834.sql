
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
      'Aspen Infusion',
      '2227 West Pecos Road Suite # 12
Chandler, AZ 85224',
      'Chandler',
      'AZ',
      '',
      'Yes',
      '33.2901788',
      '-111.880194'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aspen Infusion'
        AND o.latitude = '33.2901788'
        AND o.longitude = '-111.880194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aspen Infusion'
        AND o.latitude = '33.2901788'
        AND o.longitude = '-111.880194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aspen Infusion'
        AND o.latitude = '33.2901788'
        AND o.longitude = '-111.880194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aspen Infusion'
        AND o.latitude = '33.2901788'
        AND o.longitude = '-111.880194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aspen Infusion'
        AND o.latitude = '33.2901788'
        AND o.longitude = '-111.880194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aspen Infusion'
        AND o.latitude = '33.2901788'
        AND o.longitude = '-111.880194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aspen Infusion'
        AND o.latitude = '33.2901788'
        AND o.longitude = '-111.880194'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Aspen Infusion'
        AND o.latitude = '33.2901788'
        AND o.longitude = '-111.880194'));

COMMIT;
