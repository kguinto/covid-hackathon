
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
      'West Hills Hospital ',
      '4786 Summit Ave
Simi Valley, CA 93063',
      'Simi Valley ',
      'CA',
      'Please drop off to mailbox ',
      'Yes',
      '34.2995612',
      '-118.7001883'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2995612'
        AND o.longitude = '-118.7001883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2995612'
        AND o.longitude = '-118.7001883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2995612'
        AND o.longitude = '-118.7001883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2995612'
        AND o.longitude = '-118.7001883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2995612'
        AND o.longitude = '-118.7001883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2995612'
        AND o.longitude = '-118.7001883'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'West Hills Hospital '
        AND o.latitude = '34.2995612'
        AND o.longitude = '-118.7001883'));

COMMIT;
