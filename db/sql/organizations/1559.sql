
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
      'Martin Luther king Jr. Community Hospital',
      '1680 E 120th St
Los Angeles, CA 90059',
      'Los Angeles',
      'CA',
      'Please drop off at the ED entrance',
      'Yes',
      '33.9231768',
      '-118.2437996'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Martin Luther king Jr. Community Hospital'
        AND o.latitude = '33.9231768'
        AND o.longitude = '-118.2437996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Martin Luther king Jr. Community Hospital'
        AND o.latitude = '33.9231768'
        AND o.longitude = '-118.2437996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Martin Luther king Jr. Community Hospital'
        AND o.latitude = '33.9231768'
        AND o.longitude = '-118.2437996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Martin Luther king Jr. Community Hospital'
        AND o.latitude = '33.9231768'
        AND o.longitude = '-118.2437996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Martin Luther king Jr. Community Hospital'
        AND o.latitude = '33.9231768'
        AND o.longitude = '-118.2437996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Martin Luther king Jr. Community Hospital'
        AND o.latitude = '33.9231768'
        AND o.longitude = '-118.2437996'));

COMMIT;
