
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
      'Birchwood Terrace Rehab and Healthcare',
      '43 Starr Farm Rd
Burlington, VT 05408',
      'Burlington ',
      'VT',
      'Receiving',
      'Yes',
      '44.5158719',
      '-73.2600333'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Birchwood Terrace Rehab and Healthcare'
        AND o.latitude = '44.5158719'
        AND o.longitude = '-73.2600333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Birchwood Terrace Rehab and Healthcare'
        AND o.latitude = '44.5158719'
        AND o.longitude = '-73.2600333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Birchwood Terrace Rehab and Healthcare'
        AND o.latitude = '44.5158719'
        AND o.longitude = '-73.2600333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Birchwood Terrace Rehab and Healthcare'
        AND o.latitude = '44.5158719'
        AND o.longitude = '-73.2600333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Birchwood Terrace Rehab and Healthcare'
        AND o.latitude = '44.5158719'
        AND o.longitude = '-73.2600333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Birchwood Terrace Rehab and Healthcare'
        AND o.latitude = '44.5158719'
        AND o.longitude = '-73.2600333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Birchwood Terrace Rehab and Healthcare'
        AND o.latitude = '44.5158719'
        AND o.longitude = '-73.2600333'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Birchwood Terrace Rehab and Healthcare'
        AND o.latitude = '44.5158719'
        AND o.longitude = '-73.2600333'));

COMMIT;
