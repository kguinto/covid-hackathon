
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
      'Suburban Hospital',
      '8600 Old Georgetown Rd
Bethesda, MD 20814',
      'Bethesda',
      'MD',
      'Drop off now at McKinley street entrance (curbside)',
      'Yes',
      '38.9972577',
      '-77.110582'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Hospital'
        AND o.latitude = '38.9972577'
        AND o.longitude = '-77.110582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Hospital'
        AND o.latitude = '38.9972577'
        AND o.longitude = '-77.110582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Hospital'
        AND o.latitude = '38.9972577'
        AND o.longitude = '-77.110582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Hospital'
        AND o.latitude = '38.9972577'
        AND o.longitude = '-77.110582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Hospital'
        AND o.latitude = '38.9972577'
        AND o.longitude = '-77.110582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Hospital'
        AND o.latitude = '38.9972577'
        AND o.longitude = '-77.110582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Hospital'
        AND o.latitude = '38.9972577'
        AND o.longitude = '-77.110582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Hospital'
        AND o.latitude = '38.9972577'
        AND o.longitude = '-77.110582'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Suburban Hospital'
        AND o.latitude = '38.9972577'
        AND o.longitude = '-77.110582'));

COMMIT;
