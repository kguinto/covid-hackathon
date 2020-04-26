
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
      'Kaiser Permanente - Tyson''s Corner, Anesthesiology Department ',
      '1753 Swann Street NW unit 2
Washington, DC 20009',
      'Washington',
      'DC',
      'Leave at bottom of the stairs. Zip code 20009',
      'Yes',
      '38.9149671',
      '-77.0402744'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Tyson''s Corner, Anesthesiology Department '
        AND o.latitude = '38.9149671'
        AND o.longitude = '-77.0402744'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Tyson''s Corner, Anesthesiology Department '
        AND o.latitude = '38.9149671'
        AND o.longitude = '-77.0402744'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Tyson''s Corner, Anesthesiology Department '
        AND o.latitude = '38.9149671'
        AND o.longitude = '-77.0402744'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Tyson''s Corner, Anesthesiology Department '
        AND o.latitude = '38.9149671'
        AND o.longitude = '-77.0402744'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Tyson''s Corner, Anesthesiology Department '
        AND o.latitude = '38.9149671'
        AND o.longitude = '-77.0402744'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Tyson''s Corner, Anesthesiology Department '
        AND o.latitude = '38.9149671'
        AND o.longitude = '-77.0402744'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Tyson''s Corner, Anesthesiology Department '
        AND o.latitude = '38.9149671'
        AND o.longitude = '-77.0402744'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Tyson''s Corner, Anesthesiology Department '
        AND o.latitude = '38.9149671'
        AND o.longitude = '-77.0402744'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Tyson''s Corner, Anesthesiology Department '
        AND o.latitude = '38.9149671'
        AND o.longitude = '-77.0402744'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - Tyson''s Corner, Anesthesiology Department '
        AND o.latitude = '38.9149671'
        AND o.longitude = '-77.0402744'));

COMMIT;
