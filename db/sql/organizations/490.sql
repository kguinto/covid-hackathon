
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
      'Legacy Mount Hood Medical Center ',
      '24800 SE Stark St
Gresham, OR 97030',
      'Gresham ',
      'OR',
      'In main entrance  to hospital ',
      'Yes',
      '45.5175498',
      '-122.4074572'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Mount Hood Medical Center '
        AND o.latitude = '45.5175498'
        AND o.longitude = '-122.4074572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Mount Hood Medical Center '
        AND o.latitude = '45.5175498'
        AND o.longitude = '-122.4074572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Mount Hood Medical Center '
        AND o.latitude = '45.5175498'
        AND o.longitude = '-122.4074572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Mount Hood Medical Center '
        AND o.latitude = '45.5175498'
        AND o.longitude = '-122.4074572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Mount Hood Medical Center '
        AND o.latitude = '45.5175498'
        AND o.longitude = '-122.4074572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Mount Hood Medical Center '
        AND o.latitude = '45.5175498'
        AND o.longitude = '-122.4074572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Mount Hood Medical Center '
        AND o.latitude = '45.5175498'
        AND o.longitude = '-122.4074572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Mount Hood Medical Center '
        AND o.latitude = '45.5175498'
        AND o.longitude = '-122.4074572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Mount Hood Medical Center '
        AND o.latitude = '45.5175498'
        AND o.longitude = '-122.4074572'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Mount Hood Medical Center '
        AND o.latitude = '45.5175498'
        AND o.longitude = '-122.4074572'));

COMMIT;
