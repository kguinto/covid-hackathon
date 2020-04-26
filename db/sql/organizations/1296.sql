
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
      'Center for Nursing and Rehabilitation ',
      '21 Danforth St
Hoosick Falls, NY 12090',
      'Hoosick Falls ',
      'NY',
      'Mailing is same as above',
      'Yes',
      '42.909881',
      '-73.346691'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Nursing and Rehabilitation '
        AND o.latitude = '42.909881'
        AND o.longitude = '-73.346691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Nursing and Rehabilitation '
        AND o.latitude = '42.909881'
        AND o.longitude = '-73.346691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Nursing and Rehabilitation '
        AND o.latitude = '42.909881'
        AND o.longitude = '-73.346691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Nursing and Rehabilitation '
        AND o.latitude = '42.909881'
        AND o.longitude = '-73.346691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Nursing and Rehabilitation '
        AND o.latitude = '42.909881'
        AND o.longitude = '-73.346691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Nursing and Rehabilitation '
        AND o.latitude = '42.909881'
        AND o.longitude = '-73.346691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Nursing and Rehabilitation '
        AND o.latitude = '42.909881'
        AND o.longitude = '-73.346691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Nursing and Rehabilitation '
        AND o.latitude = '42.909881'
        AND o.longitude = '-73.346691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Nursing and Rehabilitation '
        AND o.latitude = '42.909881'
        AND o.longitude = '-73.346691'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Center for Nursing and Rehabilitation '
        AND o.latitude = '42.909881'
        AND o.longitude = '-73.346691'));

COMMIT;
