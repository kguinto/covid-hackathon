
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
      'Allergy & Asthma Centers Woodbridge ',
      '2200 Opitz Blvd Suite 230
Woodbridge, VA 22191',
      'Woodbridge ',
      'VA',
      'ATTN: Jay Won Bartlett, NP',
      'Yes',
      '38.6334929',
      '-77.2795359'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy & Asthma Centers Woodbridge '
        AND o.latitude = '38.6334929'
        AND o.longitude = '-77.2795359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy & Asthma Centers Woodbridge '
        AND o.latitude = '38.6334929'
        AND o.longitude = '-77.2795359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy & Asthma Centers Woodbridge '
        AND o.latitude = '38.6334929'
        AND o.longitude = '-77.2795359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy & Asthma Centers Woodbridge '
        AND o.latitude = '38.6334929'
        AND o.longitude = '-77.2795359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy & Asthma Centers Woodbridge '
        AND o.latitude = '38.6334929'
        AND o.longitude = '-77.2795359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy & Asthma Centers Woodbridge '
        AND o.latitude = '38.6334929'
        AND o.longitude = '-77.2795359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy & Asthma Centers Woodbridge '
        AND o.latitude = '38.6334929'
        AND o.longitude = '-77.2795359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy & Asthma Centers Woodbridge '
        AND o.latitude = '38.6334929'
        AND o.longitude = '-77.2795359'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Allergy & Asthma Centers Woodbridge '
        AND o.latitude = '38.6334929'
        AND o.longitude = '-77.2795359'));

COMMIT;
