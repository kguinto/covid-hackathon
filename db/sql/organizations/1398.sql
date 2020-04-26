
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
      'Redmond Heights Senior Living',
      '7950 Willows Rd
Redmond, WA 98052',
      'Redmond',
      'WA',
      '',
      'No',
      '47.6756316',
      '-122.1360636'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redmond Heights Senior Living'
        AND o.latitude = '47.6756316'
        AND o.longitude = '-122.1360636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redmond Heights Senior Living'
        AND o.latitude = '47.6756316'
        AND o.longitude = '-122.1360636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redmond Heights Senior Living'
        AND o.latitude = '47.6756316'
        AND o.longitude = '-122.1360636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redmond Heights Senior Living'
        AND o.latitude = '47.6756316'
        AND o.longitude = '-122.1360636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redmond Heights Senior Living'
        AND o.latitude = '47.6756316'
        AND o.longitude = '-122.1360636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redmond Heights Senior Living'
        AND o.latitude = '47.6756316'
        AND o.longitude = '-122.1360636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redmond Heights Senior Living'
        AND o.latitude = '47.6756316'
        AND o.longitude = '-122.1360636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redmond Heights Senior Living'
        AND o.latitude = '47.6756316'
        AND o.longitude = '-122.1360636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redmond Heights Senior Living'
        AND o.latitude = '47.6756316'
        AND o.longitude = '-122.1360636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Redmond Heights Senior Living'
        AND o.latitude = '47.6756316'
        AND o.longitude = '-122.1360636'));

COMMIT;
