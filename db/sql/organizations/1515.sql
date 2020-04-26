
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
      'Mobile medical response, Covenant ',
      '7587 Alex Ct
Freeland, MI 48623',
      'Freeland',
      'MI',
      'Both ',
      'Yes',
      '43.519079',
      '-84.139071'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile medical response, Covenant '
        AND o.latitude = '43.519079'
        AND o.longitude = '-84.139071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile medical response, Covenant '
        AND o.latitude = '43.519079'
        AND o.longitude = '-84.139071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile medical response, Covenant '
        AND o.latitude = '43.519079'
        AND o.longitude = '-84.139071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile medical response, Covenant '
        AND o.latitude = '43.519079'
        AND o.longitude = '-84.139071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile medical response, Covenant '
        AND o.latitude = '43.519079'
        AND o.longitude = '-84.139071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile medical response, Covenant '
        AND o.latitude = '43.519079'
        AND o.longitude = '-84.139071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile medical response, Covenant '
        AND o.latitude = '43.519079'
        AND o.longitude = '-84.139071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile medical response, Covenant '
        AND o.latitude = '43.519079'
        AND o.longitude = '-84.139071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile medical response, Covenant '
        AND o.latitude = '43.519079'
        AND o.longitude = '-84.139071'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mobile medical response, Covenant '
        AND o.latitude = '43.519079'
        AND o.longitude = '-84.139071'));

COMMIT;
