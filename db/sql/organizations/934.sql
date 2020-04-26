
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
      'Digestive Health Associates of Texas',
      '3417 Gaston Ave Ste. 790
Dallas, TX 75246',
      'Dallas',
      'TX',
      'Contact: Sarita Gayle.  Call me at 5127969916 if delivery does not want to come in building',
      'Yes',
      '32.7903447',
      '-96.7813167'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Digestive Health Associates of Texas'
        AND o.latitude = '32.7903447'
        AND o.longitude = '-96.7813167'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Digestive Health Associates of Texas'
        AND o.latitude = '32.7903447'
        AND o.longitude = '-96.7813167'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Digestive Health Associates of Texas'
        AND o.latitude = '32.7903447'
        AND o.longitude = '-96.7813167'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Digestive Health Associates of Texas'
        AND o.latitude = '32.7903447'
        AND o.longitude = '-96.7813167'));

COMMIT;
