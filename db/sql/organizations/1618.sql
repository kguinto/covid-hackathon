
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
      'Georgetown ER',
      '1210 W University Ave
Georgetown, TX 78628',
      'Georgetown',
      'TX',
      '1210 w. university blvd',
      'Yes',
      '30.6335281',
      '-97.6992875'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Georgetown ER'
        AND o.latitude = '30.6335281'
        AND o.longitude = '-97.6992875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Georgetown ER'
        AND o.latitude = '30.6335281'
        AND o.longitude = '-97.6992875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Georgetown ER'
        AND o.latitude = '30.6335281'
        AND o.longitude = '-97.6992875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Georgetown ER'
        AND o.latitude = '30.6335281'
        AND o.longitude = '-97.6992875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Georgetown ER'
        AND o.latitude = '30.6335281'
        AND o.longitude = '-97.6992875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Georgetown ER'
        AND o.latitude = '30.6335281'
        AND o.longitude = '-97.6992875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Georgetown ER'
        AND o.latitude = '30.6335281'
        AND o.longitude = '-97.6992875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Georgetown ER'
        AND o.latitude = '30.6335281'
        AND o.longitude = '-97.6992875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Georgetown ER'
        AND o.latitude = '30.6335281'
        AND o.longitude = '-97.6992875'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Georgetown ER'
        AND o.latitude = '30.6335281'
        AND o.longitude = '-97.6992875'));

COMMIT;
