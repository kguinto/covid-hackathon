
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
      'Regents Point',
      '19191 Harvard Ave
Irvine, CA 92612',
      'Irvine',
      'CA',
      'Drop off at Windcrest SNF building',
      'Yes',
      '33.6522739',
      '-117.832295'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regents Point'
        AND o.latitude = '33.6522739'
        AND o.longitude = '-117.832295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regents Point'
        AND o.latitude = '33.6522739'
        AND o.longitude = '-117.832295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regents Point'
        AND o.latitude = '33.6522739'
        AND o.longitude = '-117.832295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regents Point'
        AND o.latitude = '33.6522739'
        AND o.longitude = '-117.832295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regents Point'
        AND o.latitude = '33.6522739'
        AND o.longitude = '-117.832295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regents Point'
        AND o.latitude = '33.6522739'
        AND o.longitude = '-117.832295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regents Point'
        AND o.latitude = '33.6522739'
        AND o.longitude = '-117.832295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regents Point'
        AND o.latitude = '33.6522739'
        AND o.longitude = '-117.832295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regents Point'
        AND o.latitude = '33.6522739'
        AND o.longitude = '-117.832295'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Regents Point'
        AND o.latitude = '33.6522739'
        AND o.longitude = '-117.832295'));

COMMIT;
