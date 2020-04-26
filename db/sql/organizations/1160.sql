
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
      'Arizona Behavioral Health Associates, P.C',
      '710 N Beaver St bldg 4
Flagstaff, AZ 86001',
      'Flagstaff',
      'AZ',
      'Mail slot, or door when open 9-5',
      'Yes',
      '35.2047144',
      '-111.6468138'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Behavioral Health Associates, P.C'
        AND o.latitude = '35.2047144'
        AND o.longitude = '-111.6468138'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Behavioral Health Associates, P.C'
        AND o.latitude = '35.2047144'
        AND o.longitude = '-111.6468138'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Behavioral Health Associates, P.C'
        AND o.latitude = '35.2047144'
        AND o.longitude = '-111.6468138'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Behavioral Health Associates, P.C'
        AND o.latitude = '35.2047144'
        AND o.longitude = '-111.6468138'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Behavioral Health Associates, P.C'
        AND o.latitude = '35.2047144'
        AND o.longitude = '-111.6468138'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Arizona Behavioral Health Associates, P.C'
        AND o.latitude = '35.2047144'
        AND o.longitude = '-111.6468138'));

COMMIT;
