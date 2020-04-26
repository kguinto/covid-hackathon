
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
      'Ronald Reagan UCLA Medical Center',
      '757 Westwood Plaza
Los Angeles, CA 90024',
      'Los Angeles',
      'CA',
      'covid19PPEsupport@mednet.ucla.edu',
      'contact email',
      '34.0664764',
      '-118.4465738'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ronald Reagan UCLA Medical Center'
        AND o.latitude = '34.0664764'
        AND o.longitude = '-118.4465738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ronald Reagan UCLA Medical Center'
        AND o.latitude = '34.0664764'
        AND o.longitude = '-118.4465738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ronald Reagan UCLA Medical Center'
        AND o.latitude = '34.0664764'
        AND o.longitude = '-118.4465738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ronald Reagan UCLA Medical Center'
        AND o.latitude = '34.0664764'
        AND o.longitude = '-118.4465738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ronald Reagan UCLA Medical Center'
        AND o.latitude = '34.0664764'
        AND o.longitude = '-118.4465738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ronald Reagan UCLA Medical Center'
        AND o.latitude = '34.0664764'
        AND o.longitude = '-118.4465738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ronald Reagan UCLA Medical Center'
        AND o.latitude = '34.0664764'
        AND o.longitude = '-118.4465738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ronald Reagan UCLA Medical Center'
        AND o.latitude = '34.0664764'
        AND o.longitude = '-118.4465738'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('bleach',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ronald Reagan UCLA Medical Center'
        AND o.latitude = '34.0664764'
        AND o.longitude = '-118.4465738'));

COMMIT;
